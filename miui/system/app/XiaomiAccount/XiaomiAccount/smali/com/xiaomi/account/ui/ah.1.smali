.class final Lcom/xiaomi/account/ui/ah;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eI:Lcom/xiaomi/account/ui/c;

.field final synthetic eJ:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ah;->eI:Lcom/xiaomi/account/ui/c;

    iput-object p2, p0, Lcom/xiaomi/account/ui/ah;->eJ:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xiaomi/account/ui/ah;->eJ:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/ah;->eI:Lcom/xiaomi/account/ui/c;

    invoke-static {v1, v0}, Lcom/xiaomi/account/ui/c;->V(Lcom/xiaomi/account/ui/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaomi/account/utils/p;->oo(Landroid/content/DialogInterface;Z)V

    iget-object v0, p0, Lcom/xiaomi/account/ui/ah;->eJ:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/xiaomi/account/utils/p;->oo(Landroid/content/DialogInterface;Z)V

    iget-object v1, p0, Lcom/xiaomi/account/ui/ah;->eI:Lcom/xiaomi/account/ui/c;

    sget-object v2, Lcom/xiaomi/account/data/UploadProfileType;->kW:Lcom/xiaomi/account/data/UploadProfileType;

    invoke-static {v1, v2, v0, v3, v3}, Lcom/xiaomi/account/ui/c;->aa(Lcom/xiaomi/account/ui/c;Lcom/xiaomi/account/data/UploadProfileType;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    return-void
.end method
