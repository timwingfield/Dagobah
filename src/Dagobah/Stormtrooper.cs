using System;

namespace Dagobah
{
    public interface IStormtrooper
    {
        int Accuracy { get; set; }
    }

    public class Stormtrooper : IStormtrooper
    {
        public int Accuracy { get; set; }

        public Stormtrooper()
        {
            Accuracy = 4;
        }
    }
}