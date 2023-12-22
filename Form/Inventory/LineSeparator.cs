using iText.Kernel.Pdf.Canvas.Draw;
using System;

namespace Panaderia.Form.Inventory
{
    internal class LineSeparator
    {
        private SolidLine solidLine;

        public LineSeparator(SolidLine solidLine)
        {
            this.solidLine = solidLine;
        }

        internal object SetMarginTop(int v)
        {
            throw new NotImplementedException();
        }
    }
}