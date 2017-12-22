.class final Lcom/xiaomi/passport/ui/M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic tg:Lcom/xiaomi/passport/ui/K;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/ui/K;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/ui/M;->tg:Lcom/xiaomi/passport/ui/K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string/jumbo v0, "AccountRegSuccessFragment"

    const-string/jumbo v1, "registerByPhone: fail to add account manager"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
