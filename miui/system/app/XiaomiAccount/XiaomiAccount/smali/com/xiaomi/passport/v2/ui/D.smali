.class final Lcom/xiaomi/passport/v2/ui/D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Eq:Lcom/xiaomi/passport/v2/ui/c;

.field final synthetic Er:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/ui/c;Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/ui/D;->Eq:Lcom/xiaomi/passport/v2/ui/c;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/ui/D;->Er:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/ui/D;->Eq:Lcom/xiaomi/passport/v2/ui/c;

    iget-object v0, v0, Lcom/xiaomi/passport/v2/ui/c;->CJ:Lcom/xiaomi/passport/v2/utils/c;

    iget-object v1, p0, Lcom/xiaomi/passport/v2/ui/D;->Er:Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;

    iget v1, v1, Lcom/xiaomi/accountsdk/account/data/ActivatorPhoneInfo;->QN:I

    invoke-virtual {v0, v1}, Lcom/xiaomi/passport/v2/utils/c;->Lm(I)V

    return-void
.end method
