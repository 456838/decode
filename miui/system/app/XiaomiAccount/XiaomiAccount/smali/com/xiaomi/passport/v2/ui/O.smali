.class final Lcom/xiaomi/passport/v2/ui/O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EP:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic EQ:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

.field final synthetic ER:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/O;->EP:Lcom/xiaomi/passport/v2/ui/c;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/O;->EQ:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iput-object p3, p0, Lcom/xiaomi/passport/v2/ui/O;->ER:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/O;->EP:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/O;->EQ:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget-object v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QM:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/passport/v2/ui/O;->ER:Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/passport/v2/ui/c;->IB(Ljava/lang/String;Lcom/xiaomi/accountsdk/account/data/PhoneTokenRegisterParams;)V

    return-void
.end method
