.class public Lcom/xiaomi/passport/ui/j;
.super Lcom/xiaomi/passport/ui/l;
.source ""


# instance fields
.field protected ph:Landroid/app/Activity;

.field protected pi:Lcom/xiaomi/passport/ui/A;

.field private pj:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

.field protected pk:Landroid/widget/ListView;

.field protected pl:Ljava/lang/String;

.field protected pm:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/passport/ui/l;-><init>()V

    return-void
.end method

.method static synthetic tB(Lcom/xiaomi/passport/ui/j;)Lcom/xiaomi/passport/widget/AlphabetFastIndexer;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pj:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    return-object v0
.end method


# virtual methods
.method protected ep()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "AreaCodePickerFragment"

    return-object v0
.end method

.method protected getItem(I)Lcom/xiaomi/passport/utils/k;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pi:Lcom/xiaomi/passport/ui/A;

    invoke-virtual {v0, p1}, Lcom/xiaomi/passport/ui/A;->getItem(I)Lcom/xiaomi/passport/utils/k;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/xiaomi/passport/ui/l;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/xiaomi/passport/ui/j;->ph:Landroid/app/Activity;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/xiaomi/passport/ui/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/passport/utils/j;->Dv(Landroid/content/Context;)V

    iget-boolean v0, p0, Lcom/xiaomi/passport/ui/j;->px:Z

    if-eqz v0, :cond_0

    const v0, 0x7f03002a

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/passport/ui/j;->pm:Landroid/view/View;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pm:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/j;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaomi/passport/ui/j;->tA(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pm:Landroid/view/View;

    return-object v0

    :cond_0
    const v0, 0x7f03001b

    goto :goto_0
.end method

.method protected tA(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/passport/ui/j;->tx(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/j;->ty(Landroid/view/View;)V

    invoke-virtual {p0, p1}, Lcom/xiaomi/passport/ui/j;->tz(Landroid/view/View;)V

    return-void
.end method

.method protected tw()Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1

    new-instance v0, Lcom/xiaomi/passport/ui/Y;

    invoke-direct {v0, p0}, Lcom/xiaomi/passport/ui/Y;-><init>(Lcom/xiaomi/passport/ui/j;)V

    return-object v0
.end method

.method protected tx(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Lcom/xiaomi/passport/ui/A;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/xiaomi/passport/ui/A;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/xiaomi/passport/ui/j;->pi:Lcom/xiaomi/passport/ui/A;

    return-void
.end method

.method protected ty(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f10005f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/j;->pk:Landroid/widget/ListView;

    return-void
.end method

.method protected tz(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pk:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/j;->pi:Lcom/xiaomi/passport/ui/A;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pk:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/xiaomi/passport/ui/j;->tw()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f100060

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    iput-object v0, p0, Lcom/xiaomi/passport/ui/j;->pj:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pj:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/j;->pk:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->Az(Landroid/widget/AdapterView;)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pj:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/j;->pk:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/j;->pj:Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    new-instance v2, Lcom/xiaomi/passport/ui/X;

    invoke-direct {v2, p0}, Lcom/xiaomi/passport/ui/X;-><init>(Lcom/xiaomi/passport/ui/j;)V

    invoke-virtual {v1, v2}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AB(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method
