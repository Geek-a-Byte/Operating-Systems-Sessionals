#include <bits/stdc++.h>
using namespace std;
#define TC     \
    int tc;    \
    cin >> tc; \
    for (int cn = 1; cn <= tc; ++cn)
#define int long double
#define read freopen("input.txt", "r", stdin)
#define write freopen("output.txt", "w", stdout)
class process_info
{
public:
    int process_id;
    string process_name;
    int duration;
    int arrival_time;
    process_info(int p_id, string p_name, int d, int a)
    {
        process_id = p_id;
        process_name = p_name;
        duration = d;
        arrival_time = a;
    }
};
bool operator<(const process_info &p1, const process_info &p2)
{
    return p1.arrival_time < p2.arrival_time;
}
signed main()
{
    vector<process_info> execute_process;
    // read;
    // write;
    int temp = 0;
    while (1)
    {
        int time_start = 0;
        int sum_turnaround = 0;
        int p_id;      // process id
        string p_name; // process name
        int d;         // duration
        int a;         // arrival time
        int n;         // number of processes
        cout << "Input the no of processes and\nprocess_id process_name duration arrival_time\n";
        cin >> n;
        temp += n;
        while (n--)
        {
            cin >> p_id >> p_name >> d >> a;
            process_info p_info(p_id, p_name, d, a);
            execute_process.push_back(p_info);
        }
        sort(execute_process.begin(), execute_process.end());
        int cnt = 1;
        cout << "Sequence Number || "
             << "Process Name || "
             << "Timeline || "
             << "Turnaround"
             << "\n";
        for (auto i : execute_process)
        {
            process_info p = i;
            cout << cnt << " " << p.process_name << " " << time_start << "-" << time_start + p.duration << " " << time_start + p.duration - p.arrival_time << "\n";
            sum_turnaround += time_start + p.duration - p.arrival_time;
            time_start = time_start + p.duration;
            cnt++;
        }
        cout << "A.T.T : " << sum_turnaround / temp << endl;
    }
}