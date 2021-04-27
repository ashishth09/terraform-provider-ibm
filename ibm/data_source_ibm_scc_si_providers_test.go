/* IBM Confidential
*  Object Code Only Source Materials
*  5747-SM3
*  (c) Copyright IBM Corp. 2017,2021
*
*  The source code for this program is not published or otherwise divested
*  of its trade secrets, irrespective of what has been deposited with the
*  U.S. Copyright Office. */

package ibm

import (
	"fmt"
	"testing"

	"github.com/hashicorp/terraform-plugin-sdk/v2/helper/resource"
)

func TestAccIBMProvidersDataSource(t *testing.T) {
	resource.Test(t, resource.TestCase{
		PreCheck:  func() { testAccPreCheck(t) },
		Providers: testAccProviders,
		Steps: []resource.TestStep{
			resource.TestStep{
				Config: testAccCheckIBMProvidersDataSourceConfig(),
				Check: resource.ComposeTestCheckFunc(
					resource.TestCheckResourceAttrSet("data.ibm_scc_si_providers.providers", "providers.0.id"),
					resource.TestCheckResourceAttrSet("data.ibm_scc_si_providers.providers", "providers.0.name"),
				),
			},
		},
	})
}

func testAccCheckIBMProvidersDataSourceConfig() string {
	return fmt.Sprintf(`
data "ibm_scc_si_providers" "providers" {
}`)
}