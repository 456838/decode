.class final Lcom/xiaomi/passport/ui/K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic td:Lcom/xiaomi/passport/ui/J;

.field final synthetic te:Lcom/xiaomi/accountsdk/account/data/AccountInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/J;Lcom/xiaomi/accountsdk/account/data/AccountInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/K;->td:Lcom/xiaomi/passport/ui/J;

    iput-object p2, p0, Lcom/xiaomi/passport/ui/K;->te:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Lcom/xiaomi/passport/v2/utils/f;

    iget-object v1, p0, Lcom/xiaomi/passport/ui/K;->td:Lcom/xiaomi/passport/ui/J;

    iget-object v1, v1, Lcom/xiaomi/passport/ui/J;->sZ:Lcom/xiaomi/passport/ui/e;

    invoke-virtual {v1}, Lcom/xiaomi/passport/ui/e;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaomi/passport/v2/utils/f;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/xiaomi/passport/ui/K;->te:Lcom/xiaomi/accountsdk/account/data/AccountInfo;

    new-instance v2, Lcom/xiaomi/passport/ui/L;

    invoke-direct {v2, p0}, Lcom/xiaomi/passport/ui/L;-><init>(Lcom/xiaomi/passport/ui/K;)V

    new-instance v3, Lcom/xiaomi/passport/ui/M;

    invoke-direct {v3, p0}, Lcom/xiaomi/passport/ui/M;-><init>(Lcom/xiaomi/passport/ui/K;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaomi/passport/v2/utils/f;->Lu(Lcom/xiaomi/accountsdk/account/data/AccountInfo;Lcom/xiaomi/passport/v2/utils/g;Ljava/lang/Runnable;)V

    return-void
.end method
