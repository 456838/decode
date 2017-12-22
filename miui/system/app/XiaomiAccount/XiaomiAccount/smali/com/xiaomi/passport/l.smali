.class final Lcom/xiaomi/passport/l;
.super Ljava/lang/Thread;
.source ""


# instance fields
.field final synthetic LT:Lcom/xiaomi/passport/MiPassportUIControllerService;

.field final synthetic LU:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/MiPassportUIControllerService;Ljava/lang/RuntimeException;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/l;->LT:Lcom/xiaomi/passport/MiPassportUIControllerService;

    iput-object p2, p0, Lcom/xiaomi/passport/l;->LU:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/l;->LU:Ljava/lang/RuntimeException;

    throw v0
.end method
