
struct type_1 {
    int member;
};

RWByteAddressBuffer unnamed : register(u0);

void function()
{
    int _expr8 = asint(unnamed.Load(0));
    unnamed.Store(0, asuint((_expr8 + 1)));
    return;
}

[numthreads(64, 1, 1)]
void main()
{
    function();
}