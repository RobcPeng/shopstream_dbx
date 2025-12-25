dbx environments -

1. cd terraform_shopstream
2. nano ~/.databrickscfg

DAB:
databricks bundle deploy -t stage --profile stage

Terraform (once per env)
run:
`terraform init`

    `terraform plan -var="environment=dev" -out=dbx_tfplan`
    `terraform apply dbx_tfplan -var="environment=dev" `
    `terraform destroy -var="environment=dev"`

    dbx cnfigs:
    cat ~/.databrickscfg

databricks clusters spark-versions --profile stage

---

uv build --wheel
