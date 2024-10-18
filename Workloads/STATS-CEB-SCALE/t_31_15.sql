SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 241
AND u.Views <= 279
AND u.DownVotes >= 8
AND u.DownVotes <= 113
AND u.UpVotes <= 230
AND c.CreationDate >= 668
AND c.CreationDate <= 895
AND ph.CreationDate >= 344
AND ph.CreationDate <= 1146
AND v.CreationDate >= 483
AND v.CreationDate <= 1339

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;