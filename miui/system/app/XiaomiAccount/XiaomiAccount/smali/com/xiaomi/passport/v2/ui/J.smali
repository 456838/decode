.class final Lcom/xiaomi/passport/v2/ui/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EG:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic EH:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/J;->EG:Lcom/xiaomi/passport/v2/ui/c;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/J;->EH:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/J;->EG:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/J;->EH:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-static {v0, v1}, Lcom/xiaomi/passport/v2/ui/c;->Jb(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V

    return-void
.end method
