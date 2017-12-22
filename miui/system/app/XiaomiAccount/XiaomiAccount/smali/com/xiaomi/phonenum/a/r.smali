.class public Lcom/xiaomi/phonenum/a/r;
.super Lcom/xiaomi/phonenum/a/n;
.source ""


# instance fields
.field private final aed:Ljava/lang/String;

.field private final aee:Ljava/lang/String;

.field private final aef:J

.field private final aeg:I

.field private final aeh:J

.field private final aei:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string/jumbo v0, "sms"

    invoke-direct {p0, v0, p1}, Lcom/xiaomi/phonenum/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p7, p0, Lcom/xiaomi/phonenum/a/r;->aed:Ljava/lang/String;

    iput-object p8, p0, Lcom/xiaomi/phonenum/a/r;->aee:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/phonenum/a/r;->aef:J

    iput p4, p0, Lcom/xiaomi/phonenum/a/r;->aeg:I

    iput-wide p5, p0, Lcom/xiaomi/phonenum/a/r;->aeh:J

    iput-object p9, p0, Lcom/xiaomi/phonenum/a/r;->aei:Ljava/lang/String;

    return-void
.end method

.method static synthetic anM(Lcom/xiaomi/phonenum/a/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/r;->aee:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic anN(Lcom/xiaomi/phonenum/a/r;)I
    .locals 1

    iget v0, p0, Lcom/xiaomi/phonenum/a/r;->aeg:I

    return v0
.end method

.method static synthetic anO(Lcom/xiaomi/phonenum/a/r;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/phonenum/a/r;->aef:J

    return-wide v0
.end method

.method static synthetic anP(Lcom/xiaomi/phonenum/a/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/r;->aei:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic anQ(Lcom/xiaomi/phonenum/a/r;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/r;->aed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic anR(Lcom/xiaomi/phonenum/a/r;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/phonenum/a/r;->aeh:J

    return-wide v0
.end method
