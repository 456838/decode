.class final Lcom/xiaomi/passport/v2/utils/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic GL:Lcom/xiaomi/passport/v2/utils/o;

.field final synthetic GM:Lcom/xiaomi/passport/v2/utils/h;


# direct methods
.method constructor <init>(Lcom/xiaomi/passport/v2/utils/o;Lcom/xiaomi/passport/v2/utils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/v2/utils/q;->GL:Lcom/xiaomi/passport/v2/utils/o;

    iput-object p2, p0, Lcom/xiaomi/passport/v2/utils/q;->GM:Lcom/xiaomi/passport/v2/utils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/passport/v2/utils/q;->GM:Lcom/xiaomi/passport/v2/utils/h;

    sget-object v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->Ho:Lcom/xiaomi/passport/v2/manager/ErrorInfo;

    iget v1, v1, Lcom/xiaomi/passport/v2/manager/ErrorInfo;->errorMessageId:I

    invoke-interface {v0, v1}, Lcom/xiaomi/passport/v2/utils/h;->yr(I)V

    return-void
.end method
