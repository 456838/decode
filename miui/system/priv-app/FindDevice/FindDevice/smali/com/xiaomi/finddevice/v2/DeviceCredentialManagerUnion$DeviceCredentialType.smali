.class final enum Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;
.super Ljava/lang/Enum;
.source "DeviceCredentialManagerUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceCredentialType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

.field public static final enum NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

.field public static final enum TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;


# instance fields
.field public final mark:[B


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 242
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    const-string/jumbo v1, "TZ"

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    .line 243
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    const-string/jumbo v1, "NoTZ"

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;-><init>(Ljava/lang/String;I[B)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    .line 241
    new-array v0, v3, [Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->$VALUES:[Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    return-void

    .line 242
    :array_0
    .array-data 1
        0x6t
        0x0t
    .end array-data

    .line 243
    nop

    :array_1
    .array-data 1
        0x16t
        0x0t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[B)V
    .locals 0
    .param p3, "mark"    # [B

    .prologue
    .line 245
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 246
    iput-object p3, p0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->mark:[B

    .line 245
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 241
    const-class v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;
    .locals 1

    .prologue
    .line 241
    sget-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;->$VALUES:[Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialType;

    return-object v0
.end method
