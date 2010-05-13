using System;

namespace Dagobah
{
    public interface IStormtrooper
    {
        int Accuracy { get; set; }
        string Designation { get; set; }
        void InspectDroids();
    }

    public class Stormtrooper : IStormtrooper
    {
        public int Accuracy { get; set; }
        public string Designation { get; set; }

        public Stormtrooper()
        {
            Accuracy = 4;
        }

        public Stormtrooper(string designation)
        {
            Designation = designation;
            Accuracy = 4;
        }

        public void InspectDroids()
        {
            throw new NotTheDroidsYourLookingFor("You can go about your business.");
        }
    }

    public class NotTheDroidsYourLookingFor : Exception
    {
        public NotTheDroidsYourLookingFor() { }
        public NotTheDroidsYourLookingFor(string message) : base(message) { }
    }
}