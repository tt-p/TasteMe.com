using System.Collections.Generic;
using System.Data;

namespace Data
{
    public interface IDbCommon<T>
    {
        T Get(int tid);
        DataTable GetAll();
        void Insert(T t);
        void InsertAll(IEnumerable<T> ts);
        DataTable Search(string searchText);
        void Update(T t);
        void Delete(int tid);
    }
}
