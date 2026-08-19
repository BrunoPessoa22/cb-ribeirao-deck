# cb-ribeirao-deck

Deck comercial Cultura Builder Enterprise para a **Secretaria Municipal da Saúde de
Ribeirão Preto**: programa "Saúde Builder" — cultura de construção com IA (Formação
Builder) + IA Privada, ancorado nos programas que a própria Secretaria já opera
(app Saúde Digital, NIGA, Cuidar+On, Complexo Regulador, ecossistema SUPERA/Coderp).

- **Live:** https://ribeirao.brunopessoa.com (+ `/saude-builder-ribeirao.pdf` para WhatsApp)
- 17 slides, PT-BR, deck comercial (enviável e apresentável).
- Navegação: setas / espaço / clique (terço esquerdo volta), deep link `#N`.
- Números dos slides 2 vêm do material da própria Secretaria (PPTX de 2026):
  80,4% dos agendamentos pelo app, 48 unidades, NIGA, 0800 único, 5 centrais.
- Exemplos de builds (slide 9) são deliberadamente ADMINISTRATIVOS — nada clínico
  (sensibilidade CFM/ANVISA); nota fixa: decisão clínica continua com profissionais.
- Claims seguem o fact-audit da unidade IA Privada: "membro do NVIDIA Inception"
  (nunca "powered by"), residência de dados em contrato (perímetro de CONTROLE, não
  geografia), absolutos com escopo ("não é compartilhado com nenhum provedor de
  modelo"), modelo anônimo ("modelo aberto de fronteira"), 8.000+ formados, clientes
  de saúde anonimizados, sem preço no deck (CTA = diagnóstico 30 min, sem custo, NDA).
- Provas de soberania válidas: Serpro Nuvem Soberana + cooperativas financeiras
  (nunca Bradesco/Petrobras — rodam Azure OpenAI).

## Editar

Editar `index.html` direto (arquivo único, CSS/JS inline). Depois:

```bash
# regenerar o PDF (Chrome headless, 1280x720 por slide)
"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" \
  --headless --disable-gpu --no-pdf-header-footer \
  --print-to-pdf=saude-builder-ribeirao.pdf "file://$PWD/index.html"

git add -A && git commit -m "..." && git push

# redeploy Coolify (git push NAO dispara deploy automático)
# APP_UUID: ver seção Deploy abaixo; token: mesmo das sessões Einstein/Soberana/Saad
curl -X POST -H "Authorization: Bearer $COOLIFY_TOKEN" -H "User-Agent: Mozilla/5.0" \
  "https://coolify.brunopessoa.com/api/v1/deploy?uuid=$APP_UUID&force=true"
```

## Deploy

- Coolify app uuid: `qk5vdm23wzgo1ww3nwjrypqn` (projeto kdeamptyyi0b2c2baf0enk1h / production).
- Domínio registrado com esquema `https://` (gotcha microfranquia).

Design: CB Enterprise (ink #0C0D0E / bone #F4F5F1 / orange #F4632F, Geist + Geist Mono),
sem gradientes. Assinatura visual: a faixa (capa/fechamento) + a cadeia dos programas
da Secretaria (slide 2). Logo CB oficial inline (currentColor). Estático, nginx.
Sem segredos no repositório.
