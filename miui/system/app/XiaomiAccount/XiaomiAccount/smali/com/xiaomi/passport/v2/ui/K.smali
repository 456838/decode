.class final Lcom/xiaomi/passport/v2/ui/K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EI:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic EJ:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/K;->EI:Lcom/xiaomi/passport/v2/ui/c;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/K;->EJ:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/K;->EJ:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/K;->EI:Lcom/xiaomi/passport/v2/ui/c;

    invoke-virtual {v1}, Lcom/xiaomi/passport/v2/ui/c;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/K;->EI:Lcom/xiaomi/passport/v2/ui/c;

    invoke-static {v2}, Lcom/xiaomi/passport/v2/ui/c;->IW(Lcom/xiaomi/passport/v2/ui/c;)Lcom/xiaomi/passport/ui/m;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/m;->Kv(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Landroid/os/Bundle;Lcom/xiaomi/passport/ui/m;)Lcom/xiaomi/passport/v2/ui/m;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/K;->EI:Lcom/xiaomi/passport/v2/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/ui/c;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/K;->EI:Lcom/xiaomi/passport/v2/ui/c;

    invoke-virtual {v0}, Lcom/xiaomi/passport/v2/ui/c;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v0}, Lcom/xiaomi/passport/utils/r;->Ez(Landroid/app/Activity;Landroid/app/Fragment;ZI)V

    return-void
.end method
