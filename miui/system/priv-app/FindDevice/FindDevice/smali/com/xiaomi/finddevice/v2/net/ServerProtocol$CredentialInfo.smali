.class public Lcom/xiaomi/finddevice/v2/net/ServerProtocol$CredentialInfo;
.super Ljava/lang/Object;
.source "ServerProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/net/ServerProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CredentialInfo"
.end annotation


# instance fields
.field public fid:Ljava/lang/String;

.field public fpriv:Ljava/security/PrivateKey;

.field public host:Ljava/lang/String;

.field public ownUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
