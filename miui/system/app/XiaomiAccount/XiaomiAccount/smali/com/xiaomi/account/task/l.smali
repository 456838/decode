.class public Lcom/xiaomi/account/task/l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private iY:I

.field private iZ:J

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/account/task/l;->userId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/account/task/l;->iZ:J

    iput p4, p0, Lcom/xiaomi/account/task/l;->iY:I

    return-void
.end method


# virtual methods
.method public jY()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/account/task/l;->iZ:J

    return-wide v0
.end method

.method public jZ()I
    .locals 1

    iget v0, p0, Lcom/xiaomi/account/task/l;->iY:I

    return v0
.end method

.method public ka()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/account/task/l;->userId:Ljava/lang/String;

    return-object v0
.end method
