.class final Lcom/xiaomi/account/p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic op:Lcom/xiaomi/account/d;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/d;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/p;->op:Lcom/xiaomi/account/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/xiaomi/account/d;->qp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/account/push/a;->pI(Landroid/content/Context;)Lcom/xiaomi/account/push/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/account/push/a;->pJ()V

    return-void
.end method
