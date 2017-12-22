.class final Lcom/xiaomi/account/ui/ag;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eH:Lcom/xiaomi/account/ui/c;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/ag;->eH:Lcom/xiaomi/account/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/ag;->eH:Lcom/xiaomi/account/ui/c;

    invoke-static {v0}, Lcom/xiaomi/account/ui/c;->Q(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/account/ui/ag;->eH:Lcom/xiaomi/account/ui/c;

    invoke-static {v0}, Lcom/xiaomi/account/ui/c;->Q(Lcom/xiaomi/account/ui/c;)Lcom/xiaomi/account/ui/AccountValuePreference;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/ag;->eH:Lcom/xiaomi/account/ui/c;

    invoke-static {v1}, Lcom/xiaomi/account/ui/c;->S(Lcom/xiaomi/account/ui/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/ui/AccountValuePreference;->dc(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
