using System.Collections.Generic;

namespace Dagobah
{
    public class Squad
    {
        public List<Stormtrooper> Troopers { get; set; }

        public Squad()
        {
            Troopers = new List<Stormtrooper>();
        }

        public void AddAStormtrooper()
        {
            Troopers.Add(new Stormtrooper());
        }

        public void AddThreeStormtroopers()
        {
            Troopers.Add(new Stormtrooper());
            Troopers.Add(new Stormtrooper());
            Troopers.Add(new Stormtrooper());
        }

        /*
         * write tests to check ctor intialization
         * in ruby: init Stormtrooper with :accuracy and :name or some new property
         */
    }
}