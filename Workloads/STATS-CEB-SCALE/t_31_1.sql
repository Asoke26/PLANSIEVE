SELECT COUNT(*)
 FROM comments c,
postHistory ph,
votes v,
users u
WHERE u.Views >= 516
AND u.Views <= 881
AND u.DownVotes >= 60
AND u.DownVotes <= 212
AND u.UpVotes <= 505
AND c.CreationDate >= 933
AND c.CreationDate <= 1522
AND ph.CreationDate >= 190
AND ph.CreationDate <= 869
AND v.CreationDate >= 74
AND v.CreationDate <= 1275

AND u.Id = v.UserId
AND v.UserId = ph.UserId
AND ph.UserId = c.UserId;