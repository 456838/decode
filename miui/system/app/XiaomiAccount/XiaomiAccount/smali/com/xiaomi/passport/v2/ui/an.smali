.class final Lcom/xiaomi/passport/v2/ui/an;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic Ga:Lcom/xiaomi/passport/v2/ui/k;

.field final synthetic Gb:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/k;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/an;->Ga:Lcom/xiaomi/passport/v2/ui/k;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/an;->Gb:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/an;->Ga:Lcom/xiaomi/passport/v2/ui/k;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/an;->Gb:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/ui/k;->IF(Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method
