.class final Lcom/xiaomi/account/ui/bZ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/b;


# instance fields
.field final synthetic ht:Lcom/xiaomi/account/ui/N;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/N;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bZ;->ht:Lcom/xiaomi/account/ui/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iN(I)V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bZ;->ht:Lcom/xiaomi/account/ui/N;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/N;->gL(Lcom/xiaomi/account/ui/N;Lcom/xiaomi/account/task/a;)Lcom/xiaomi/account/task/a;

    iget-object v0, p0, Lcom/xiaomi/account/ui/bZ;->ht:Lcom/xiaomi/account/ui/N;

    iget-object v1, p0, Lcom/xiaomi/account/ui/bZ;->ht:Lcom/xiaomi/account/ui/N;

    invoke-virtual {v1, p1}, Lcom/xiaomi/account/ui/N;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/N;->gN(Lcom/xiaomi/account/ui/N;Ljava/lang/String;)V

    return-void
.end method

.method public iO()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/account/ui/bZ;->ht:Lcom/xiaomi/account/ui/N;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/N;->gL(Lcom/xiaomi/account/ui/N;Lcom/xiaomi/account/task/a;)Lcom/xiaomi/account/task/a;

    iget-object v0, p0, Lcom/xiaomi/account/ui/bZ;->ht:Lcom/xiaomi/account/ui/N;

    invoke-static {v0}, Lcom/xiaomi/account/ui/N;->gM(Lcom/xiaomi/account/ui/N;)V

    return-void
.end method
