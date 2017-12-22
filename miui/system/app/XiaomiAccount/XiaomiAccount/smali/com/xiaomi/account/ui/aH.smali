.class final Lcom/xiaomi/account/ui/aH;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ft:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

.field final synthetic fu:Landroid/widget/Button;

.field final synthetic fv:Landroid/widget/Button;

.field final synthetic fw:Lmiui/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Landroid/widget/Button;Landroid/widget/Button;Lmiui/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aH;->ft:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    iput-object p2, p0, Lcom/xiaomi/account/ui/aH;->fu:Landroid/widget/Button;

    iput-object p3, p0, Lcom/xiaomi/account/ui/aH;->fv:Landroid/widget/Button;

    iput-object p4, p0, Lcom/xiaomi/account/ui/aH;->fw:Lmiui/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xiaomi/account/ui/aH;->fu:Landroid/widget/Button;

    if-ne p1, v1, :cond_2

    const-string/jumbo v0, "replace_phone"

    iget-object v1, p0, Lcom/xiaomi/account/ui/aH;->ft:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QY:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-static {v1, v2}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bg(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/xiaomi/account/ui/aH;->fw:Lmiui/app/AlertDialog;

    invoke-virtual {v1}, Lmiui/app/AlertDialog;->dismiss()V

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaomi/accountsdk/account/a/a;->aah()Lcom/xiaomi/accountsdk/account/a/a;

    move-result-object v1

    const-string/jumbo v2, "user_detail_info"

    invoke-virtual {v1, v2, v0}, Lcom/xiaomi/accountsdk/account/a/a;->sx(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/account/ui/aH;->fv:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    const-string/jumbo v0, "delete_phone"

    iget-object v1, p0, Lcom/xiaomi/account/ui/aH;->ft:Lcom/xiaomi/account/ui/UserPhoneInfoActivity;

    sget-object v2, Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;->QX:Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;

    invoke-static {v1, v2}, Lcom/xiaomi/account/ui/UserPhoneInfoActivity;->bg(Lcom/xiaomi/account/ui/UserPhoneInfoActivity;Lcom/xiaomi/accountsdk/account/data/IdentityAuthReason;)V

    goto :goto_0
.end method
