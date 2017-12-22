.class final Lcom/xiaomi/passport/ui/X;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic tE:Lcom/xiaomi/passport/ui/j;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/j;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/X;->tE:Lcom/xiaomi/passport/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/ui/X;->tE:Lcom/xiaomi/passport/ui/j;

    iget-object v0, v0, Lcom/xiaomi/passport/ui/j;->pi:Lcom/xiaomi/passport/ui/A;

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/ui/A;->wM(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/X;->tE:Lcom/xiaomi/passport/ui/j;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/j;->pl:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/passport/ui/X;->tE:Lcom/xiaomi/passport/ui/j;

    invoke-static {v1}, Lcom/xiaomi/passport/ui/j;->tB(Lcom/xiaomi/passport/ui/j;)Lcom/xiaomi/passport/widget/AlphabetFastIndexer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/widget/AlphabetFastIndexer;->AA(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/X;->tE:Lcom/xiaomi/passport/ui/j;

    iput-object v0, v1, Lcom/xiaomi/passport/ui/j;->pl:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
