// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
// 
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.

namespace Fixtures.MirrorPolymorphic.Models
{
    using System;
    using System.Linq;
    using System.Collections.Generic;
    using Newtonsoft.Json;
    using Microsoft.Rest;
    using Microsoft.Rest.Serialization;

    public partial class Doggy : Animal
    {
        /// <summary>
        /// Initializes a new instance of the Doggy class.
        /// </summary>
        public Doggy() { }

        /// <summary>
        /// Initializes a new instance of the Doggy class.
        /// </summary>
        public Doggy(string id = default(string), string description = default(string), string name = default(string))
            : base(id, description)
        {
            Name = name;
        }

        /// <summary>
        /// Gets or sets dog name
        /// </summary>
        [JsonProperty(PropertyName = "name")]
        public string Name { get; set; }

    }
}