.class public Lcom/xiaomi/passport/task/b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Bq:Landroid/app/Activity;

.field private Br:Lcom/xiaomi/passport/task/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/task/b;->Bq:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public Gr(Lcom/xiaomi/passport/task/c;)Lcom/xiaomi/passport/task/b;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/passport/task/b;->Br:Lcom/xiaomi/passport/task/c;

    return-object p0
.end method

.method public build()Lcom/xiaomi/passport/task/a;
    .locals 4

    new-instance v0, Lcom/xiaomi/passport/task/a;

    iget-object v1, p0, Lcom/xiaomi/passport/task/b;->Bq:Landroid/app/Activity;

    iget-object v2, p0, Lcom/xiaomi/passport/task/b;->Br:Lcom/xiaomi/passport/task/c;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaomi/passport/task/a;-><init>(Landroid/app/Activity;Lcom/xiaomi/passport/task/c;Lcom/xiaomi/passport/task/a;)V

    return-object v0
.end method
