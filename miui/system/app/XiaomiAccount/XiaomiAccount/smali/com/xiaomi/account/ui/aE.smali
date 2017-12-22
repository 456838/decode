.class final Lcom/xiaomi/account/ui/aE;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fq:Lcom/xiaomi/account/ui/k;


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/k;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/aE;->fq:Lcom/xiaomi/account/ui/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/ui/aE;->fq:Lcom/xiaomi/account/ui/k;

    iget-object v0, v0, Lcom/xiaomi/account/ui/k;->dl:Lcom/xiaomi/account/ui/g;

    invoke-virtual {v0}, Lcom/xiaomi/account/ui/g;->notifyDataSetChanged()V

    return-void
.end method
