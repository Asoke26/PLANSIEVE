SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 10
AND u.Views <= 6948
AND u.DownVotes >= 55
AND c.CreationDate >= 541
AND c.CreationDate <= 978
AND u.CreationDate <= 192

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;