.class public Lcom/xiaomi/passport/data/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mUserId:Ljava/lang/String;

.field private vN:Ljava/lang/String;

.field private vO:J

.field private vP:Ljava/lang/String;

.field private vQ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/passport/data/f;->mUserId:Ljava/lang/String;

    iput-object p2, p0, Lcom/xiaomi/passport/data/f;->vP:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/passport/data/f;->vQ:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/passport/data/f;->vN:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public za(J)V
    .locals 1

    iput-wide p1, p0, Lcom/xiaomi/passport/data/f;->vO:J

    return-void
.end method

.method public zb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/f;->vQ:Ljava/lang/String;

    return-object v0
.end method

.method public zc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/f;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public zd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/f;->vN:Ljava/lang/String;

    return-object v0
.end method

.method public ze()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/passport/data/f;->vP:Ljava/lang/String;

    return-object v0
.end method

.method public zf()J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/passport/data/f;->vO:J

    return-wide v0
.end method
