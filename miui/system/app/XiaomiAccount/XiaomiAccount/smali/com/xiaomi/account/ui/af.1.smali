.class final Lcom/xiaomi/account/ui/af;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic eE:Lcom/xiaomi/account/ui/c;

.field final synthetic eF:Ljava/lang/String;

.field final synthetic eG:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/af;->eE:Lcom/xiaomi/account/ui/c;

    iput-object p2, p0, Lcom/xiaomi/account/ui/af;->eF:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/account/ui/af;->eG:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/account/ui/af;->eE:Lcom/xiaomi/account/ui/c;

    iget-object v1, p0, Lcom/xiaomi/account/ui/af;->eF:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/account/ui/af;->eG:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/xiaomi/account/task/q;->kq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaomi/account/ui/c;->T(Lcom/xiaomi/account/ui/c;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
