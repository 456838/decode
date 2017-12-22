.class final Lcom/xiaomi/passport/ui/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic sZ:Lcom/xiaomi/passport/ui/e;

.field final synthetic ta:Landroid/view/View;

.field final synthetic tb:Landroid/widget/Button;

.field final synthetic tc:Lcom/xiaomi/accountsdk/account/data/AccountInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/e;Landroid/view/View;Landroid/widget/Button;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/J;->sZ:Lcom/xiaomi/passport/ui/e;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/J;->ta:Landroid/view/View;

    iput-object p3, p0, Lcom/xiaomi/passport/ui/J;->tb:Landroid/widget/Button;

    iput-object p4, p0, Lcom/xiaomi/passport/ui/J;->tc:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/ui/J;->ta:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/J;->tb:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/xiaomi/passport/ui/J;->tb:Landroid/widget/Button;

    new-instance v1, Lcom/xiaomi/passport/ui/K;

    iget-object v2, p0, Lcom/xiaomi/passport/ui/J;->tc:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {v1, p0, v2}, Lcom/xiaomi/passport/ui/K;-><init>(Lcom/xiaomi/passport/ui/J;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
