.class public Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;
.super Ljava/lang/Object;
.source "ServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TZKey"
.end annotation


# instance fields
.field public es:Ljava/lang/String;

.field public sign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "es"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;->es:Ljava/lang/String;

    .line 133
    iput-object p2, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;->sign:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 138
    const-string/jumbo v0, "TZKey: es(%s), sign(%s). "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;->es:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/xiaomi/finddevice/v2/net/ServerProtocol$TZKey;->sign:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
