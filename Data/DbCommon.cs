using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data
{
    public abstract class DbCommon<T> : IDbCommon<T>
    {
        public abstract T Get(int tid);
        public abstract DataTable GetAll();
        public abstract void Insert(T t);
        public virtual void InsertAll(IEnumerable<T> ts)
        {
            foreach (T t in ts)
            {
                Insert(t);
            }
        }
        public abstract DataTable Search(String searchText);
        public void Update(T t)
        {
            Insert(t);
        }
        public abstract void Delete(int tid);
    }
}
