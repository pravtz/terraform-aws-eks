# Terraform AWS EKS Module

![Terraform](https://img.shields.io/badge/Terraform-1.0+-blue.svg)
![AWS EKS](https://img.shields.io/badge/AWS%20EKS-managed--kubernetes-brightgreen.svg)
![License](https://img.shields.io/badge/license-MIT-green)

Este módulo Terraform cria e gerencia um cluster EKS (Elastic Kubernetes Service) na AWS. Ele é ideal para criar ambientes Kubernetes de alta disponibilidade com escalabilidade automática e segurança avançada para aplicações em nuvem.

---

## 📋 Conteúdos
- [Recursos](#recursos)
- [Pré-requisitos](#pré-requisitos)
- [Uso](#uso)
- [Entradas](#entradas)
- [Saídas](#saídas)
- [Contribuições](#contribuições)
- [Licença](#licença)

---

## 🚀 Recursos

Este módulo cria os seguintes recursos no AWS EKS:

- **Cluster EKS** com autenticação IAM e integração VPC.
- **Grupos de Nós Gerenciados** para escalabilidade automática dos nós de trabalho.
- **Networking** (VPC, Subnets, e Security Groups) para isolar e proteger o cluster.
- **Configuração IAM** para garantir permissões necessárias.
- **Mapeamento de usuários e grupos** para controle de acesso granular.

---

## 🛠 Pré-requisitos

1. **Terraform** versão 1.0 ou superior.
2. **AWS CLI** configurado com permissões para criar recursos do EKS.
3. **Kubectl** instalado para interação com o cluster EKS.
4. **Conta AWS** com permissões apropriadas.

---

## 📦 Uso

### Configuração Básica

Crie um arquivo `main.tf` e importe o módulo da seguinte forma:

```hcl
module "eks_cluster" {
  source  = "github.com/pravtz/terraform-aws-eks"


  # Parâmetros adicionais

}
```

Execute os comandos abaixo para aplicar o módulo:

```bash
terraform init
terraform apply
```

### Exemplo Completo

Para ver todas as opções disponíveis, consulte o arquivo `examples/complete/main.tf`.

---

## ⚙️ Entradas

| Parâmetro            | Descrição                                         | Tipo       | Default       | Obrigatório |
|----------------------|---------------------------------------------------|------------|---------------|-------------|
| `cluster_name`       | Nome do Cluster EKS                               | `string`   | `"eks-cluster"` | Sim         |
| `region`             | Região AWS onde o cluster será provisionado       | `string`   | `"us-west-2"` | Sim         |
| `vpc_id`             | ID da VPC para o cluster                          | `string`   | n/a           | Sim         |
| `subnets`            | Subnets privadas para os nós                      | `list(string)` | n/a         | Sim         |
| `desired_capacity`   | Capacidade desejada para o auto-scaling           | `number`   | `2`           | Não         |
| `min_size`           | Capacidade mínima de nós                          | `number`   | `1`           | Não         |
| `max_size`           | Capacidade máxima de nós                          | `number`   | `4`           | Não         |

Para uma lista completa, consulte o arquivo `variables.tf`.

---

## 📤 Saídas

| Parâmetro            | Descrição                                        |
|----------------------|--------------------------------------------------|
| `cluster_id`         | ID do Cluster EKS criado                         |
| `kubeconfig`         | Arquivo kubeconfig para acesso ao cluster        |
| `node_group_names`   | Nomes dos grupos de nós                           |

---

## 🤝 Contribuições

Contribuições são bem-vindas! Para contribuir, siga as etapas abaixo:

1. Faça um fork do repositório.
2. Crie uma nova branch: `git checkout -b feature/nova-funcionalidade`.
3. Faça suas alterações e realize um commit: `git commit -m 'Adiciona nova funcionalidade'`.
4. Envie para a branch original: `git push origin feature/nova-funcionalidade`.
5. Abra um Pull Request.

---

## 📜 Licença

Este módulo está licenciado sob a [MIT License](LICENSE).

---

## 📞 Suporte

Para dúvidas ou problemas, por favor, abra uma [issue](https://github.com/pravtz/terraform-aws-eks/issues).

--- 


