using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using Edk.Poc.WebAPI.Models;

namespace Edk.Poc.WebAPI.Infrastructure
{
    public class EdkDataReader
    {
        private string SQLConnectionString { get; set; }
        public EdkDataReader(string connectionString)
        {
            SQLConnectionString = connectionString;
        }

        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        public List<ZipCode> ZipCodeInfo(int zipCodeInput)
        {
            List<ZipCode> zipCodeList = new List<ZipCode>();


            SqlDataReader rdr = null;

            // create a connection object
            SqlConnection conn = new SqlConnection(SQLConnectionString);

            // create a command object
            SqlCommand cmd = new SqlCommand("select [Id],[CreatedDate],[ModifiedDate],[Country],[ZipCode5Digit],[City],[STATE],[StateAbbreviation],[County],[Latitude],[Longitude] from [ZipCode] where [ZipCode5Digit] = '" + zipCodeInput + "'", conn);

            try
            {
                // open the connection
                conn.Open();

                // 1. get an instance of the SqlDataReader
                rdr = cmd.ExecuteReader();

                while (rdr.Read())
                {
                    zipCodeList.Add(new ZipCode() {
                        Id = Guid.Parse(Convert.ToString(rdr[0])),
                        CreatedDate = DateTime.Parse(Convert.ToString(rdr[1])),
                        ModifiedDate = DateTime.Parse(Convert.ToString(rdr[2])),
                        Country = Convert.ToString(rdr[3]),
                        ZipCode5Digits = Convert.ToString(rdr[4]),
                        City = Convert.ToString(rdr[5]),
                        State = Convert.ToString(rdr[6]),
                        StateAbbreviation = Convert.ToString(rdr[7]),
                        County = Convert.ToString(rdr[8]),
                        Latitude = Convert.ToDecimal(rdr[9]),
                        Longitude = Convert.ToDecimal(rdr[10])
                    } );
                }

                return zipCodeList;
            }
            finally
            {
                // 3. close the reader
                if (rdr != null)
                {
                    rdr.Close();
                }

                // close the connection
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
    }
}
