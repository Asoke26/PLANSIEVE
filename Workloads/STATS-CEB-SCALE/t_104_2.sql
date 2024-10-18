SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE c.Score = 7
AND u.Views <= 220
AND u.DownVotes >= 11
AND c.CreationDate >= 1041
AND c.CreationDate <= 1303
AND u.CreationDate <= 633

AND v.UserId = u.Id
AND c.UserId = u.Id
AND ph.UserId = u.Id;