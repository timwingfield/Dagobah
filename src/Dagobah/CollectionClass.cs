using System.Collections.Generic;

namespace Dagobah
{
    public class CollectionClass
    {
        public List<string> EmptyCollection { get; set; }
        public List<string> Collection { get; set; }

        public CollectionClass()
        {
            Collection = new List<string> { "One Item" };
            EmptyCollection = new List<string>();
        }
    }
}