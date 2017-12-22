.class public Lcom/xiaomi/phonenum/a/c;
.super Lcom/xiaomi/phonenum/a/n;
.source ""


# instance fields
.field private final adq:Ljava/lang/String;

.field private final adr:J

.field private final ads:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "smsReceive"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/xiaomi/phonenum/a/n;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaomi/phonenum/a/c;->adq:Ljava/lang/String;

    iput-wide p2, p0, Lcom/xiaomi/phonenum/a/c;->adr:J

    iput-object p4, p0, Lcom/xiaomi/phonenum/a/c;->ads:Ljava/lang/String;

    return-void
.end method

.method static synthetic ank(Lcom/xiaomi/phonenum/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/c;->adq:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic anl(Lcom/xiaomi/phonenum/a/c;)J
    .locals 2

    iget-wide v0, p0, Lcom/xiaomi/phonenum/a/c;->adr:J

    return-wide v0
.end method

.method static synthetic anm(Lcom/xiaomi/phonenum/a/c;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/phonenum/a/c;->ads:Ljava/lang/String;

    return-object v0
.end method
