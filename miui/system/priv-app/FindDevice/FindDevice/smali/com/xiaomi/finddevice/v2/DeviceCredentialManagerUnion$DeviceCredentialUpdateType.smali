.class final enum Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;
.super Ljava/lang/Enum;
.source "DeviceCredentialManagerUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "DeviceCredentialUpdateType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

.field public static final enum NO_NEED:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

.field public static final enum NoTZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

.field public static final enum NoTZ2TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

.field public static final enum TZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 190
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    const-string/jumbo v1, "NO_NEED"

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NO_NEED:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 191
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    const-string/jumbo v1, "NoTZ2NoTZ"

    invoke-direct {v0, v1, v3}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NoTZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 192
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    const-string/jumbo v1, "NoTZ2TZ"

    invoke-direct {v0, v1, v4}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NoTZ2TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 193
    new-instance v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    const-string/jumbo v1, "TZ2NoTZ"

    invoke-direct {v0, v1, v5}, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->TZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    .line 189
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NO_NEED:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NoTZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->NoTZ2TZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->TZ2NoTZ:Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->$VALUES:[Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 189
    const-class v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;->$VALUES:[Lcom/xiaomi/finddevice/v2/DeviceCredentialManagerUnion$DeviceCredentialUpdateType;

    return-object v0
.end method
