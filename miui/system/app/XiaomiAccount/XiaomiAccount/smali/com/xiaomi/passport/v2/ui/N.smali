.class final Lcom/xiaomi/passport/v2/ui/N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic EN:Lcom/xiaomi/passport/v2/ui/L;

.field final synthetic EO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/L;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/N;->EN:Lcom/xiaomi/passport/v2/ui/L;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/N;->EO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/N;->EN:Lcom/xiaomi/passport/v2/ui/L;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/L;->EK:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/N;->EO:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->IZ(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method
