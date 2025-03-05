package test

import (
	"fmt"
	"testing"

	"github.com/gruntwork-io/terratest/modules/random"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformVpcName(t *testing.T) {
	uniqueId := random.UniqueId()
	name := fmt.Sprintf("vpc-test-%s", uniqueId)

	// retryable errors in terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../example/",
		Vars: map[string]interface{}{
			"name": name,
		},
	})

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	output := terraform.Output(t, terraformOptions, "vpc_name")
	assert.Equal(t, name, output)
}
