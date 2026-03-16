async function loadThemes() {
    const res = await fetch('/api/themes');
    const themes = await res.json();

    const container = document.getElementById('themes-container');

    themes.forEach(theme => {
        // Créer un div pour le thème
        const themeDiv = document.createElement('div');
        themeDiv.className = 'theme';

        // Titre du thème
        const title = document.createElement('h2');
        title.textContent = theme.theme_name;
        themeDiv.appendChild(title);

        // Liste des skills
        const ul = document.createElement('ul');
        ul.className = 'skills-list';

        theme.skills.forEach(skill => {
            const li = document.createElement('li');

            const a = document.createElement('a');
            a.href = skill.url;
            a.target = '_blank';
            a.className = 'neon-link';
            a.textContent = skill.skill_name;

            // Barre de progression
            const bar = document.createElement('div');
            bar.className = 'progress-bar';
            const progress = document.createElement('div');
            progress.className = 'progress';
            progress.style.width = skill.level + '%';
            bar.appendChild(progress);

            li.appendChild(a);
            li.appendChild(bar);

            // Interaction dynamique : clic pour alerter le skill
            li.addEventListener('click', () => {
                alert(`Skill: ${skill.skill_name}\nLevel: ${skill.level}%`);
            });

            ul.appendChild(li);
        });

        themeDiv.appendChild(ul);
        container.appendChild(themeDiv);
    });
}

window.addEventListener('DOMContentLoaded', loadThemes);
