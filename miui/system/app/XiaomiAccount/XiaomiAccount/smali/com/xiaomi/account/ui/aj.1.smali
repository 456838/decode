.class final Lcom/xiaomi/account/ui/aj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic eL:Lcom/xiaomi/account/ui/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aj;->eL:Lcom/xiaomi/account/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/xiaomi/account/ui/aj;->eL:Lcom/xiaomi/account/ui/c;

    sget-object v2, Lcom/xiaomi/account/data/UploadProfileType;->kX:Lcom/xiaomi/account/data/UploadProfileType;

    if-nez p2, :cond_0

    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Gender;->Pr:Lcom/xiaomi/accountsdk/account/data/Gender;

    :goto_0
    invoke-static {v1, v2, v3, v3, v0}, Lcom/xiaomi/account/ui/c;->aa(Lcom/xiaomi/account/ui/c;Lcom/xiaomi/account/data/UploadProfileType;Ljava/lang/String;Ljava/util/Calendar;Lcom/xiaomi/accountsdk/account/data/Gender;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    :cond_0
    sget-object v0, Lcom/xiaomi/accountsdk/account/data/Gender;->Pq:Lcom/xiaomi/accountsdk/account/data/Gender;

    goto :goto_0
.end method
