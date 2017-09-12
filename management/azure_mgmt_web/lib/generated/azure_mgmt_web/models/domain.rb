# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.2.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Information about a domain.
    #
    class Domain < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Contact] Administrative contact.
      attr_accessor :contact_admin

      # @return [Contact] Billing contact.
      attr_accessor :contact_billing

      # @return [Contact] Registrant contact.
      attr_accessor :contact_registrant

      # @return [Contact] Technical contact.
      attr_accessor :contact_tech

      # @return [DomainStatus] Domain registration status. Possible values
      # include: 'Active', 'Awaiting', 'Cancelled', 'Confiscated', 'Disabled',
      # 'Excluded', 'Expired', 'Failed', 'Held', 'Locked', 'Parked', 'Pending',
      # 'Reserved', 'Reverted', 'Suspended', 'Transferred', 'Unknown',
      # 'Unlocked', 'Unparked', 'Updated', 'JsonConverterFailed'
      attr_accessor :registration_status

      # @return [ProvisioningState] Domain provisioning state. Possible values
      # include: 'Succeeded', 'Failed', 'Canceled', 'InProgress', 'Deleting'
      attr_accessor :provisioning_state

      # @return [Array<String>] Name servers.
      attr_accessor :name_servers

      # @return [Boolean] <code>true</code> if domain privacy is enabled for
      # this domain; otherwise, <code>false</code>.
      attr_accessor :privacy

      # @return [DateTime] Domain creation timestamp.
      attr_accessor :created_time

      # @return [DateTime] Domain expiration timestamp.
      attr_accessor :expiration_time

      # @return [DateTime] Timestamp when the domain was renewed last time.
      attr_accessor :last_renewed_time

      # @return [Boolean] <code>true</code> if the domain should be
      # automatically renewed; otherwise, <code>false</code>. Default value:
      # true .
      attr_accessor :auto_renew

      # @return [Boolean] <code>true</code> if Azure can assign this domain to
      # App Service apps; otherwise, <code>false</code>. This value will be
      # <code>true</code> if domain registration status is active and
      # it is hosted on name servers Azure has programmatic access to.
      attr_accessor :ready_for_dns_record_management

      # @return [Array<HostName>] All hostnames derived from the domain and
      # assigned to Azure resources.
      attr_accessor :managed_host_names

      # @return [DomainPurchaseConsent] Legal agreement consent.
      attr_accessor :consent

      # @return [Array<Enum>] Reasons why domain is not renewable.
      attr_accessor :domain_not_renewable_reasons

      # @return [DnsType] Current DNS type. Possible values include:
      # 'AzureDns', 'DefaultDomainRegistrarDns'
      attr_accessor :dns_type

      # @return [String] Azure DNS Zone to use
      attr_accessor :dns_zone_id

      # @return [DnsType] Target DNS type (would be used for migration).
      # Possible values include: 'AzureDns', 'DefaultDomainRegistrarDns'
      attr_accessor :target_dns_type

      # @return [String]
      attr_accessor :auth_code


      #
      # Mapper for Domain class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Domain',
          type: {
            name: 'Composite',
            class_name: 'Domain',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              contact_admin: {
                required: false,
                serialized_name: 'properties.contactAdmin',
                type: {
                  name: 'Composite',
                  class_name: 'Contact'
                }
              },
              contact_billing: {
                required: false,
                serialized_name: 'properties.contactBilling',
                type: {
                  name: 'Composite',
                  class_name: 'Contact'
                }
              },
              contact_registrant: {
                required: false,
                serialized_name: 'properties.contactRegistrant',
                type: {
                  name: 'Composite',
                  class_name: 'Contact'
                }
              },
              contact_tech: {
                required: false,
                serialized_name: 'properties.contactTech',
                type: {
                  name: 'Composite',
                  class_name: 'Contact'
                }
              },
              registration_status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.registrationStatus',
                type: {
                  name: 'Enum',
                  module: 'DomainStatus'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'Enum',
                  module: 'ProvisioningState'
                }
              },
              name_servers: {
                required: false,
                read_only: true,
                serialized_name: 'properties.nameServers',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              privacy: {
                required: false,
                serialized_name: 'properties.privacy',
                type: {
                  name: 'Boolean'
                }
              },
              created_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdTime',
                type: {
                  name: 'DateTime'
                }
              },
              expiration_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.expirationTime',
                type: {
                  name: 'DateTime'
                }
              },
              last_renewed_time: {
                required: false,
                read_only: true,
                serialized_name: 'properties.lastRenewedTime',
                type: {
                  name: 'DateTime'
                }
              },
              auto_renew: {
                required: false,
                serialized_name: 'properties.autoRenew',
                default_value: true,
                type: {
                  name: 'Boolean'
                }
              },
              ready_for_dns_record_management: {
                required: false,
                read_only: true,
                serialized_name: 'properties.readyForDnsRecordManagement',
                type: {
                  name: 'Boolean'
                }
              },
              managed_host_names: {
                required: false,
                read_only: true,
                serialized_name: 'properties.managedHostNames',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HostNameElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HostName'
                      }
                  }
                }
              },
              consent: {
                required: false,
                serialized_name: 'properties.consent',
                type: {
                  name: 'Composite',
                  class_name: 'DomainPurchaseConsent'
                }
              },
              domain_not_renewable_reasons: {
                required: false,
                read_only: true,
                serialized_name: 'properties.domainNotRenewableReasons',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'enumElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              dns_type: {
                required: false,
                serialized_name: 'properties.dnsType',
                type: {
                  name: 'Enum',
                  module: 'DnsType'
                }
              },
              dns_zone_id: {
                required: false,
                serialized_name: 'properties.dnsZoneId',
                type: {
                  name: 'String'
                }
              },
              target_dns_type: {
                required: false,
                serialized_name: 'properties.targetDnsType',
                type: {
                  name: 'Enum',
                  module: 'DnsType'
                }
              },
              auth_code: {
                required: false,
                read_only: true,
                serialized_name: 'properties.authCode',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
