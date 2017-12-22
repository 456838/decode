.class final Lcom/xiaomi/accountsdk/a/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aam:Lcom/xiaomi/accountsdk/a/a;


# direct methods
.method constructor <init>(Lcom/xiaomi/accountsdk/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/accountsdk/a/d;->aam:Lcom/xiaomi/accountsdk/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/accountsdk/a/d;->aam:Lcom/xiaomi/accountsdk/a/a;

    invoke-static {v0}, Lcom/xiaomi/accountsdk/a/a;->ajE(Lcom/xiaomi/accountsdk/a/a;)Lcom/xiaomi/accountsdk/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/accountsdk/a/d;->aam:Lcom/xiaomi/accountsdk/a/a;

    invoke-interface {v0, v1}, Lcom/xiaomi/accountsdk/a/b;->Nd(Lcom/xiaomi/accountsdk/a/a;)V

    return-void
.end method
