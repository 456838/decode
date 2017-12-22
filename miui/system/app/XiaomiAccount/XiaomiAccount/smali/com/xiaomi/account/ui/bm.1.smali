.class final Lcom/xiaomi/account/ui/bm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic gu:Lcom/xiaomi/account/ui/AccountSettingsActivity;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/AccountSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bm;->gu:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v0

    const-string/jumbo v1, "account_settings"

    const-string/jumbo v2, "scan_barcode"

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/bm;->gu:Lcom/xiaomi/account/ui/AccountSettingsActivity;

    invoke-static {v0}, Lcom/xiaomi/account/ui/AccountSettingsActivity;->dF(Lcom/xiaomi/account/ui/AccountSettingsActivity;)V

    return-void
.end method
