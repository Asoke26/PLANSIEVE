SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 7
AND u.Views <= 2722
AND u.DownVotes >= 13
AND c.CreationDate >= 208
AND c.CreationDate <= 1463
AND u.CreationDate <= 1029

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;