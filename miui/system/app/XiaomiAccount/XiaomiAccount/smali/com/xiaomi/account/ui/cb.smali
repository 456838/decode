.class final Lcom/xiaomi/account/ui/cb;
.super Lmiui/hybrid/HybridChromeClient;
.source ""


# instance fields
.field final synthetic hv:Lcom/xiaomi/account/ui/AccountHybridActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/AccountHybridActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/cb;->hv:Lcom/xiaomi/account/ui/AccountHybridActivity;

    invoke-direct {p0}, Lmiui/hybrid/HybridChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lmiui/hybrid/HybridChromeClient;->onReceivedTitle(Lmiui/hybrid/HybridView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/cb;->hv:Lcom/xiaomi/account/ui/AccountHybridActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/AccountHybridActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/account/ui/cb;->hv:Lcom/xiaomi/account/ui/AccountHybridActivity;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/AccountHybridActivity;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method
