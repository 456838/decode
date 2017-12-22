.class final Lcom/xiaomi/account/ui/bn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gv:Lcom/xiaomi/account/ui/SnsAccountActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/SnsAccountActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bn;->gv:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/xiaomi/account/ui/bn;->gv:Lcom/xiaomi/account/ui/SnsAccountActivity;

    const v1, 0x7f0c00e3

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/account/ui/bn;->gv:Lcom/xiaomi/account/ui/SnsAccountActivity;

    iget-object v3, p0, Lcom/xiaomi/account/ui/bn;->gv:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-static {v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->dW(Lcom/xiaomi/account/ui/SnsAccountActivity;)Lcom/xiaomi/account/data/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaomi/account/data/e;->me()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/bn;->gv:Lcom/xiaomi/account/ui/SnsAccountActivity;

    const v2, 0x7f0c00e4

    invoke-virtual {v1, v2}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaomi/passport/ui/D;

    invoke-direct {v2, v4}, Lcom/xiaomi/passport/ui/D;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/xiaomi/passport/ui/D;->xG(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaomi/passport/ui/D;->xH(Ljava/lang/String;)Lcom/xiaomi/passport/ui/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/passport/ui/D;->xI()Lcom/xiaomi/passport/ui/C;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->xD(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/xiaomi/account/ui/bo;

    invoke-direct {v1, p0}, Lcom/xiaomi/account/ui/bo;-><init>(Lcom/xiaomi/account/ui/bn;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Lcom/xiaomi/passport/ui/C;->xC(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/bn;->gv:Lcom/xiaomi/account/ui/SnsAccountActivity;

    invoke-virtual {v1}, Lcom/xiaomi/account/ui/SnsAccountActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "UnbindSns"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/ui/C;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
