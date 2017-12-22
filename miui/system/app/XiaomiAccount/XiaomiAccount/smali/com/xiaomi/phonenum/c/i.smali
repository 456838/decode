.class public Lcom/xiaomi/phonenum/c/i;
.super Ljava/lang/Object;
.source ""


# instance fields
.field aeR:Landroid/net/Network;

.field aeS:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaomi/phonenum/c/i;->aeS:I

    return-void
.end method


# virtual methods
.method public aok(I)Lcom/xiaomi/phonenum/c/i;
    .locals 0

    iput p1, p0, Lcom/xiaomi/phonenum/c/i;->aeS:I

    return-object p0
.end method

.method public build()Lcom/xiaomi/phonenum/c/d;
    .locals 2

    new-instance v0, Lcom/xiaomi/phonenum/c/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaomi/phonenum/c/d;-><init>(Lcom/xiaomi/phonenum/c/i;Lcom/xiaomi/phonenum/c/g;)V

    return-object v0
.end method
