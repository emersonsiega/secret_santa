import com.android.build.gradle.AppExtension

val android = project.extensions.getByType(AppExtension::class.java)

android.apply {
    flavorDimensions("flavor-type")

    productFlavors {
        create("dev") {
            dimension = "flavor-type"
            applicationId = "br.com.siegatech.secretsantaapp.dev"
            resValue(type = "string", name = "app_name", value = "[DEV] Amigo Secreto")
        }
        create("prod") {
            dimension = "flavor-type"
            applicationId = "br.com.siegatech.secretsantaapp"
            resValue(type = "string", name = "app_name", value = "Amigo Secreto")
        }
    }
}