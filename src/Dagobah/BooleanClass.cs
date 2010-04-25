namespace Dagobah
{
    public class BooleanClass
    {
        public bool TrueProperty { get; private set; }
        public bool FalseProperty { get; private set; }

        public BooleanClass()
        {
            TrueProperty = true;
            FalseProperty = false;
        }

        public bool TrueMethod(){ return true; }
        public bool FalseMethod() { return false; }
    }
}
