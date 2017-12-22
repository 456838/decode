.class final Lcom/xiaomi/finddevice/common/MTService$2;
.super Ljava/lang/Object;
.source "MTService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/finddevice/common/MTService;->notifyServiceBecomeAvailableToListener(Lcom/xiaomi/finddevice/common/MTService;Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/util/Pair;

.field final synthetic val$mtService:Lcom/xiaomi/finddevice/common/MTService;


# direct methods
.method constructor <init>(Landroid/util/Pair;Lcom/xiaomi/finddevice/common/MTService;)V
    .locals 0
    .param p2, "val$mtService"    # Lcom/xiaomi/finddevice/common/MTService;

    .prologue
    .line 267
    .local p1, "val$listener":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;Landroid/os/Handler;>;"
    iput-object p1, p0, Lcom/xiaomi/finddevice/common/MTService$2;->val$listener:Landroid/util/Pair;

    iput-object p2, p0, Lcom/xiaomi/finddevice/common/MTService$2;->val$mtService:Lcom/xiaomi/finddevice/common/MTService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/xiaomi/finddevice/common/MTService$2;->val$listener:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;

    iget-object v1, p0, Lcom/xiaomi/finddevice/common/MTService$2;->val$mtService:Lcom/xiaomi/finddevice/common/MTService;

    invoke-interface {v0, v1}, Lcom/xiaomi/finddevice/common/MTService$OnServiceBecomeAvailableListener;->onMTServiceBecomeAvailable(Lcom/xiaomi/finddevice/common/MTService;)V

    .line 269
    return-void
.end method
